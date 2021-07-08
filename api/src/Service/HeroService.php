<?php
namespace App\Service;

use App\Entity\Element;
use App\Entity\Hero;
use App\Entity\Monster;
use App\Entity\MonsterAppearance;
use App\Entity\Quest;
use App\Entity\Stuff;
use App\Entity\StuffTemplate;
use App\Entity\Weapon;
use DateInterval;
use DateTime;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Query\ResultSetMapping;
use Symfony\Component\Config\Definition\Exception\Exception;

class HeroService
{
    private $em;

    /**
     * HeroService constructor.
     * @param $em
     */
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }


    public function generateStats(float $level = 1)
    {
        $stats = [0,0,0,0,0];
        for($i = 15+5*$level; $i > 0; $i--){
            $stats[rand(0, 4)]++;
        }
        return $stats;
    }

    /**
     * @return Element
     */
    public function getRandomElement()
    {
        return $this->em->getRepository(Element::class)->find(rand(1,5));
    }

    public function generateDamages(float $getLevel)
    {
        if($getLevel == 1)
            return[1,1];
        $damages=round(rand($getLevel,2*$getLevel));
        return [$damages-rand(0,2), $damages+rand(0,2)];
    }

    public function generateGolds(float $mult)
    {
        return rand(round($mult*5), round($mult*10));
    }

    public function generateExperience(float $mult)
    {
        return round(10 * ($mult ** 1.1) + rand(0,$mult));
    }

    public function generateDuration(float $mult)
    {
        return round(20 + $mult * 7 + rand($mult*1, $mult*2));
    }
    public function generateQuest($mult){

        $q = (new Quest())->setMonster(
            $this->generateMonster($mult))
            ->setGold($this->generateGolds($mult))
            ->setExperience($this->generateExperience($mult))
            ->setDuration($this->generateDuration($mult));
        return $q;
    }
    public function generateMonster($mult){
        $races=['Demon', 'Furry', 'Mummies', 'Skeletons', 'Zombies'];
        $body=rand(0,3);
        $i=array_rand($races);
        return (new Monster())
            ->setAppearance((new MonsterAppearance())
                ->setRace($races[$i])
                ->setMouth(rand(0,3))
                ->setEyes(rand(0,3))
                ->setBody($body)
                ->setEars($body)
                ->setHead($body))
            ->setStats($this->generateStats($mult))
            ->setWeapon((new Weapon())
                ->setName('monsterWeapon')
                ->setDamages($this->generateDamages($mult))
                ->setElement($this->getRandomElement())
                ->setImage('none'));
    }
    public function generateQuests($hero)
    {
        $hero->cleanQuests();
        for ($i = 1; $i <= 2; $i += 0.5){
            $mult = $hero->getLevel() * $i;
            $hero->addQuest($this->generateQuest($mult));
        }
        return $hero;
    }
    public function beginQuest($hero, $noQuest)
    {
        if(count($hero->getQuests()) === 3){
            foreach ($hero->getQuests() as $key => $quest) {
                $quest = $hero->getQuests(){$key};
                if($key == $noQuest)
                    $quest->setEndDate((new \DateTime())->add(new DateInterval('PT' . $hero->getQuests(){$key}->getDuration() . 'S')));
                else
                    $this->em->remove($quest);
            }
            $this->em->flush();
        }
        return $hero;
    }
    public function finishQuest(Hero $hero)
    {
        if((count($hero->getQuests())===1?$hero->getQuests(){0}->getEndDate() < new DateTime():false)){
            $hero->getQuests(){0}->setEndDate($hero->getQuests(){0}->getEndDate()->add(new DateInterval('PT1H')));
            $level = $hero->getLevel();
            $heroRealStats = $this->getRealStats($hero, $level);
            $monsterRealStats = $this->getRealStats($hero->getQuests(){0}->getMonster(), $level);
            $fight = $this->generateFight($heroRealStats, $monsterRealStats);
            if(end($fight)[2][0] > end($fight)[2][1]){
                $hero->setGold($hero->getGold()+$hero->getQuests(){0}->getGold());
                $hero->setExperience($hero->getExperience()+$hero->getQuests(){0}->getExperience());
                if($hero->getReserve(){4} == null){
                    $rarity = $this->generateRarity(3);
                    $stuff = $this->generateStuff($hero, $rarity);
                    $hero->addReserve($stuff);
                }
            }
            $this->em->remove($hero->getQuests(){0});
            if($hero->getExperience() >=  ($hero->getLevel() ** 1.6) * 10) {
                $hero->setExperience($hero->getExperience() - ($hero->getLevel() ** 1.6) * 10);
                $hero->setLevel($hero->getLevel()+1);
                $hero->setUpgradePoint($hero->getUpgradePoint()+5);
            }
            $this->generateQuests($hero);
            $this->em->flush();
            return [$fight, $hero];
        }
        else{
            throw new Exception('Error while finishing quest.');
        }
    }
    private function getRealStats($hero, $level){
        $stats = $hero->getStats();
        if($hero instanceof Hero) {
            $strongElement = $hero->getAppearance()->getRace()->getBonusElement()->getId() - 1;
            $stats[$strongElement] = round($stats[$strongElement] * 1.2);
            $stuffsItems = ['weapon', 'shoulders', 'helmet', 'chest', 'belt', 'hands', 'legs'];
            $panoplie = [];
            foreach ($stuffsItems as $stuffName){
                $stuff = $hero->getStuff($stuffName);
                if($stuff != null){
                    for($x=0; $x < 5; $x++){
                        $stats[$x] += $stuff->getStats()[$x];
                    }
                    if($stuff->getTemplate()->getRarity() > 1)
                        array_push($panoplie, substr($stuff->getTemplate()->getImage(), 0, 4));
                }
            }
            if(count($panoplie) == 7 && count(array_unique($panoplie)) === 1)
                $stats[6] = $panoplie[0];
        }
        $weapon = (is_null($hero->getWeapon())?[1,1]:$hero->getWeapon()->getDamages());
        $weaponElement = (is_null($hero->getWeapon())?
            $strongElement
            :$hero->getWeapon()->getElement()->getId()-1);
        $weaponDamages = [$stats[0]+$stats[$weaponElement]+$weapon[0],$stats[0]+$stats[$weaponElement]+$weapon[1]];
        $stats[1] = min($stats[1]*10/$level,50);
        $stats[2] = $stats[2]*5+50;
        $stats[4] = min($stats[4]*10/$level,50);
        $realStats = ['stats'=>$stats,'weapon'=>$weaponDamages];
        return $realStats;
    }
    private function generateFight(array $hero, array $monster){
        $fight = [];
        $bonusSet = [];
        $palaRes = 1;
        $i = 0;
        $baseHP = [$hero['stats'][2], $monster['stats'][2]];
        while($hero['stats'][2]>0 && $monster['stats'][2]>0){
            $attaker = ($i%2==0?$hero:$monster);
            $defenser = ($i%2==0?$monster:$hero);
            $turn = [];
            if($i>0?(array_key_exists(3, $fight[$i-1])?$fight[$i-1][3][0] === 'silence':false):false)
                $turn[0] = 'silence';
            elseif($attaker['stats'][4] > rand(0,100))
                $turn[0] = 'dodge';
            elseif($attaker['stats'][1] > rand(0,100))
                $turn[0] = 'crit';
            else
                $turn[0] = 'damages';
            $turn[1] = ($turn[0]!='dodge' && $turn[0]!='silence'?max(rand($attaker['weapon'][0]*($turn[0]=='crit'?3:1), $attaker['weapon'][1]*($turn[0]=='crit'?3:1))-$defenser['stats'][3], 0):0);
            if($attaker == $hero)
                $monster['stats'][2] -= $turn[1];
            else
                $hero['stats'][2] -= $turn[1];
            if(isset($defenser['stats'][6])){
                $stuffSet =  $defenser['stats'][6];
                switch ($stuffSet) {
                    case 'Abju':
                        if (rand(1, 5) === 1 && $turn[0] !== 'dodge') {
                            $turn[4] = ['counter'];
                            $hero['stats'][2] += ($attaker == $hero ? -$turn[1] : $turn[1]);
                            $monster['stats'][2] += ($attaker == $hero ? $turn[1] : -$turn[1]);
                        }
                        break;
                    case 'Pala':
                            $turn[1] = round($turn[1]*$palaRes);
                        if($palaRes>0.5)
                            $palaRes-=0.1;
                        break;
                }
            }
            if(isset($attaker['stats'][6]) && $turn[0] != 'silence'){
                $stuffSet =  $attaker['stats'][6];
                switch ($stuffSet){
                    case 'Alch':
                        if($i < 2)
                            $bonusSet = ['poison', false, round($attaker['weapon'][0]/3)];
                        if(!$bonusSet[1])
                            $bonusSet[1]=(rand(1,2)===1?true:false);
                        else{
                            if($attaker == $hero)
                                $monster['stats'][2] -= $bonusSet[2];
                            else
                                $hero['stats'][2] -= $bonusSet[2];
                        }
                        $turn[3] = $bonusSet;
                        break;
                    case 'Bers':
                        $turn[1] = round((1+($baseHP[$i%2]-$attaker['stats'][2])/$baseHP[$i%2])*$turn[1]);
                        $turn[3] = (1+($baseHP[$i%2]-$attaker['stats'][2])/$baseHP[$i%2]);
                        break;
                    case 'Assa':
                        $turn[3] = ['steal', round($turn[1]/4)];
                        if($attaker == $hero)
                            $hero['stats'][2] = min($turn[3][1]+$hero['stats'][2], $baseHP[0]);
                        else
                            $monster['stats'][2] = min($turn[3][1]+$monster['stats'][2], $baseHP[1]);
                        break;
                    case 'Bard':
                        if(rand(1,3)===1)
                            $turn[3] = ['silence'];
                        break;
                    case 'Elem':
                        if(rand(1,4)===1){
                            $turn[3] = ['heal', $attaker['weapon'][0]*2];
                            if($attaker == $hero)
                                $hero['stats'][2] = min($turn[3][1]+$hero['stats'][2], $baseHP[0]);
                            else
                                $monster['stats'][2] = min($turn[3][1]+$monster['stats'][2], $baseHP[1]);
                        }
                        break;
                    case 'Samo':
                        if(rand(1,3)===1 && $turn[0] !== 'dodge'){
                            $turn[3] = ['double', $attaker['weapon'][0]];
                            if($attaker == $hero)
                                $monster['stats'][2]-= $turn[3][1];
                            else
                                $hero['stats'][2]-= $turn[3][1];
                        }

                        break;
                }
            }
            $turn[2] = [$hero['stats'][2], $monster['stats'][2]];
            $fight[$i] = $turn;
            $i++;
        }
        return $fight;
    }

    public function upgradeStats(Hero $hero, int $elem)
    {
        if($hero->getUpgradePoint()>0){
            $hero->setUpgradePoint($hero->getUpgradePoint()-1);
            $stats = $hero->getStats();
            $stats[$elem-1] += 1;
            $hero->setStats($stats);
            $this->em->flush();
        }
        else
            throw new Exception('No upgrade point available.');
    }
    public function unequip(Hero $hero, string $stuff){
        if($hero->getStuff($stuff) != null && $hero->getReserve(){4} == null){
            $hero->addReserve($hero->getStuff($stuff));
            $hero->removeStuff($stuff);
            $this->em->flush();
            return $hero;
        }
        else
            throw new Exception('Can\'t unequip this stuff. ('.($hero->getStuff($stuff) == null?' noEquip':'').($hero->getReserve(){4} != null?' full':'').')');
    }

    public function equip(Hero $hero, $number)
    {
        if($hero->getStuffReserve($number) != null){
            $newStuff = $hero->getStuffReserve($number);
            $type = strtolower($newStuff->getTemplate()->getType()->getName());
            $lastStuff = $hero->getStuff($type);
            $hero->setStuff($type, $newStuff);
            $hero->removeReserve($newStuff);
            if($lastStuff != null)
                $hero->addReserve($lastStuff);
            $this->em->flush();
            return $hero;
        }
        else
            return $hero;
    }

    public function generateStuff(Hero $hero, int $rarity){
        $stats=[0,0,0,0,0];
        $elementsTab = [rand(0, 4),rand(0, 4),rand(0, 4)];
        for($i = $hero->getLevel()*(1+$rarity/4);$i>0;$i--)
            $stats[$elementsTab[rand(0,2)]]+=1;

        // Dégueulasse, chercher autre pour RAND() //
        $stmt = $this->em->getConnection()->prepare('SELECT * FROM stuff_template WHERE rarity = ? ORDER BY RAND() LIMIT 1');
        $stmt->bindValue(1, $rarity);
        $stmt->execute();
        $template = $this->em->find(StuffTemplate::class, $stmt->fetch()['id']);
        ////////////////
        $stuff = (new Stuff())->setTemplate($template)
            ->setHero($hero)
            ->setStats($stats);
        if($template->getType()->getName() == 'Weapon'){
            $stuff->setDamages($this->generateDamages($hero->getLevel()))
                ->setElement($this->getRandomElement());
        }
        $this->em->persist($stuff);
        return $stuff;
    }
    public function generateStuffSet(Hero $hero){
        $sets=['Abju', 'Pala', 'Alch', 'Bers', 'Assa', 'Bard', 'Elem', 'Samo'];
        $stats=[0,0,0,0,0];
        $stmt = $this->em->getConnection()->prepare('SELECT * FROM stuff_template WHERE image like ? ORDER BY RAND() LIMIT 1');
        $stmt->bindValue(1, $sets[((int) date('z')+1) % 8].'%');
        $stmt->execute();
        $template = $this->em->find(StuffTemplate::class, $stmt->fetch()['id']);
        $stuff = (new Stuff())->setTemplate($template)
            ->setHero($hero);
        $elementsTab = [rand(0, 4),rand(0, 4),rand(0, 4)];
        for($i = $hero->getLevel()*(1+$template->getRarity()/4);$i>0;$i--)
            $stats[$elementsTab[rand(0,2)]]+=1;
        $stuff->setStats($stats);
        if($template->getType()->getName() == 'Weapon'){
            $stuff->setDamages($this->generateDamages($hero->getLevel()))
                ->setElement($this->getRandomElement());
        }
        $this->em->persist($stuff);
        return $stuff;
    }

    public function generateRarity(int $level)
    {
        $rarityTab=[[60, 35, 5, 0], [30, 50, 15, 5], [20, 30, 30, 20], [0, 0, 60, 40]];
        $rand = rand(1, 100);
        for($i = 0; $i<4; $i++){
            if($rand <= $rarityTab[$level][$i])
                return $i;
            $rand-= $rarityTab[$level][$i];
        }
        throw new Exception('Wrong calc');
    }
    public function sellStuff(Hero $hero, int $number)
    {
        if($hero->getStuffReserve($number) != null){
            $newStuff = $hero->getStuffReserve($number);
            $s = $newStuff->getStats();
            $price = (intval($newStuff->getTemplate()->getRarity())+1)*($s[0]+$s[1]+$s[2]+$s[3]+$s[4]);
            $hero->removeReserve($newStuff);
            $hero->setGold($hero->getGold()+$price);
            $this->em->flush();
            return $hero;
        }
        else
            return $hero;
    }

    public function getLadder()
    {
        return $this->em->getRepository(Hero::class)->findBy([],['level' => 'DESC'], 10);
    }

    public function buyChest(Hero $hero, int $nb)
    {
        $priceTab = [100, 500, 1000, 10, 20];
        if($nb < 5 && $nb >= 0){
            if($nb < 3){
                $price = $priceTab[$nb];
                if($hero->getGold() >= $price){
                    if($hero->getReserve(){4} == null){
                        $rarity = $this->generateRarity($nb);
                        $stuff = $this->generateStuff($hero, $rarity);
                        $hero->addReserve($stuff);
                        $hero->setGold($hero->getGold()-$price);
                        $this->em->flush();
                        return $hero;
                    }
                    else{
                        throw new Exception('Reserve full.');
                    }
                }
                else{
                    throw new Exception('Insufficient money.');
                }
            }
            elseif ($nb < 5){
                $price = $priceTab[$nb];
                if($hero->getCristal() >= $price){
                    if($hero->getReserve(){4} == null){
                        $stuff = ($nb===4?$this->generateStuffSet($hero):$this->generateStuff($hero, $this->generateRarity($nb)));
                        $hero->addReserve($stuff);
                        $hero->setCristal($hero->getCristal()-$price);
                        $this->em->flush();
                        return $hero;
                    }
                    else{
                        throw new Exception('Reserve full.');
                    }
                }
                else{
                    throw new Exception('Insufficient cristals.');
                }
            }
            else{
                throw new Exception('Unknown chest.');
            }
        }
        else{
            throw new Exception('Not a valid chest.');
        }
    }
}