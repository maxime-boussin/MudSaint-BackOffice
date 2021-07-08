<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Service\HeroService;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\HeroRepository")
 */
class Hero implements UserInterface
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     * @Groups({"read", "ladder"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=25, unique=true)
     * @Groups({"read", "ladder"})
     */
    private $name;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\HeroAppearance", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     * @Groups("read")
     */
    private $appearance;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $gold;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $cristal;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"read", "ladder"})
     */
    private $level;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"read", "ladder"})
     */
    private $experience;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $upgradePoint;

    /**
     * @ORM\Column(type="array")
     * @Groups("read")
     */
    private $stats = [];

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $weapon;

    /**
     * @ORM\Column(type="string", length=500)
     */
    private $password;
    /**
     * @ORM\Column(name="is_active", type="boolean")
     */
    private $isActive;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Quest", mappedBy="hero", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $quests;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $helmet;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $shoulders;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $chest;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $belt;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $hands;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Stuff", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $legs;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Stuff", mappedBy="hero")
     * @Groups("read")
     */
    private $reserve;

    public function __construct($username)
    {
        $this->isActive = true;
        $this->name = $username;
        $this->quests = new ArrayCollection();
        $this->reserve = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getAppearance(): ?HeroAppearance
    {
        return $this->appearance;
    }

    public function setAppearance(HeroAppearance $appearance): self
    {
        $this->appearance = $appearance;

        return $this;
    }

    public function getGold(): ?int
    {
        return $this->gold;
    }

    public function setGold(int $gold): self
    {
        $this->gold = $gold;

        return $this;
    }

    public function getCristal(): ?int
    {
        return $this->cristal;
    }

    public function setCristal(int $cristal): self
    {
        $this->cristal = $cristal;

        return $this;
    }

    public function getLevel(): ?int
    {
        return $this->level;
    }

    public function setLevel(int $level): self
    {
        $this->level = $level;

        return $this;
    }

    public function getExperience(): ?int
    {
        return $this->experience;
    }

    public function setExperience(int $experience): self
    {
        $this->experience = $experience;

        return $this;
    }

    public function getUpgradePoint(): ?int
    {
        return $this->upgradePoint;
    }

    public function setUpgradePoint(int $upgradePoint): self
    {
        $this->upgradePoint = $upgradePoint;

        return $this;
    }

    public function getStats(): ?array
    {
        return $this->stats;
    }

    public function setStats(array $stats): self
    {
        $this->stats = $stats;

        return $this;
    }

    public function getWeapon(): ?Stuff
    {
        return $this->weapon;
    }

    public function setWeapon(?Stuff $weapon): self
    {
        $this->weapon = $weapon;

        return $this;
    }

    /**
     * @return string[] The user roles
     */
    public function getRoles()
    {
        return array('ROLE_USER');
    }

    /**
     * @param $password
     * @return $this
     */
    public function setPassword($password)
    {
        $this->password = $password;
        return $this;
    }

    /**
     * @return string|null The encoded password if any
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * @return string|null The salt
     */
    public function getSalt()
    {
        return null;
    }

    /**
     * @return string The username
     */
    public function getUsername()
    {
        return $this->getName();
    }

    public function eraseCredentials()
    {
    }

    /**
     * @return Collection|Quest[]
     */
    public function getQuests(): Collection
    {
        return $this->quests;
    }

    public function removeQuest(Quest $quest): self
    {
        if ($this->quests->contains($quest)) {
            $this->quests->removeElement($quest);
        }
        return $this;
    }

    public function cleanQuests(): self
    {
        foreach ($this->quests as $quest){
            $this->quests->removeElement($quest);
            //destruct quest
        }
        return $this;
    }
    public function addQuest(Quest $quest): self
    {
        if (!$this->quests->contains($quest)) {
            $this->quests[] = $quest;
            $quest->setHero($this);
        }

        return $this;
    }

    public function getHelmet(): ?Stuff
    {
        return $this->helmet;
    }

    public function setHelmet(?Stuff $helmet): self
    {
        $this->helmet = $helmet;

        return $this;
    }

    public function getShoulders(): ?Stuff
    {
        return $this->shoulders;
    }

    public function setShoulders(?Stuff $shoulders): self
    {
        $this->shoulders = $shoulders;

        return $this;
    }

    public function getChest(): ?Stuff
    {
        return $this->chest;
    }

    public function setChest(?Stuff $chest): self
    {
        $this->chest = $chest;

        return $this;
    }

    public function getBelt(): ?Stuff
    {
        return $this->belt;
    }

    public function setBelt(?Stuff $belt): self
    {
        $this->belt = $belt;

        return $this;
    }

    public function getHands(): ?Stuff
    {
        return $this->hands;
    }

    public function setHands(?Stuff $hands): self
    {
        $this->hands = $hands;

        return $this;
    }

    public function getLegs(): ?Stuff
    {
        return $this->legs;
    }

    public function setLegs(?Stuff $legs): self
    {
        $this->legs = $legs;

        return $this;
    }

    /**
     * @return Collection|Stuff[]
     */
    public function getReserve(): Collection
    {
        return $this->reserve;
    }

    public function addReserve(Stuff $reserve): self
    {
        if (!$this->reserve->contains($reserve)) {
            $this->reserve[] = $reserve;
            $reserve->setHero($this);
        }

        return $this;
    }

    public function removeReserve(Stuff $reserve): self
    {
        if ($this->reserve->contains($reserve)) {
            $this->reserve->removeElement($reserve);
            // set the owning side to null (unless already changed)
            if ($reserve->getHero() === $this) {
                $reserve->setHero(null);
            }
        }

        return $this;
    }

    public function getStuff(string $stuff)
    {
        return $this->{$stuff};
    }

    public function removeStuff(string $stuff)
    {
        $this->{$stuff} = null;
    }

    public function setStuff(string $type, Stuff $stuff)
    {
        $this->{$type} = $stuff;
    }
    public function getStuffReserve($id)
    {
        foreach($this->getReserve()->getValues() as $item){
            if($item->getId() == $id)
                return $item;
        };
        return null;
    }
    public function getAllStuffReserve($id)
    {
        return $this->getReserve()->getValues();
    }
}
