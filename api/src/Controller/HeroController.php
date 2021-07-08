<?php


namespace App\Controller;


use App\Entity\Hero;
use App\Entity\HeroAppearance;
use App\Entity\Race;
use App\Service\HeroService;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Serializer\SerializerInterface;

class HeroController extends AbstractController
{
    /**
     * @Route("/checkHero/{hero}", name="check_hero", methods={"GET"})
     * @param $hero
     * @return Response
     */
    public function checkHero($hero)
    {
        $valid = preg_match('`^([a-zA-Z0-9-_ ]{3,20})$`', $hero);
        $name = $this->getDoctrine()
            ->getRepository(Hero::class)
            ->findOneBy(['name' => $hero]);
        return new JsonResponse($name === null && $valid);
    }

    /**
     * @Route("/register", name="register", methods={"POST"})
     * @param Request $request
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @param UserPasswordEncoderInterface $encoder
     * @return Response
     */
    public function register(Request $request, HeroService $service, SerializerInterface $serializer, UserPasswordEncoderInterface $encoder)
    {
        //$serializer = new Serializer([new ObjectNormalizer()],[new JsonEncoder()]);
        $em = $this->getDoctrine()->getManager();
        $a = json_decode($request->getContent(), true)['appearance'];
        $name = json_decode($request->getContent(), true)['name'];
        $password = json_decode($request->getContent(), true)['password'];
        $appearance = (new HeroAppearance())
            ->setRace($em->getRepository(Race::class)->find($a[0]))
            ->setHair($a[1])
            ->setMouth($a[2])
            ->setBeard($a[3])
            ->setEyes($a[4])
            ->setEyebrows($a[5])
            ->setEyesColor($a[6])
            ->setHairColor($a[7]);
        $hero = (new Hero($name))
            ->setAppearance($appearance)
            ->setCristal(0)
            ->setExperience(0)
            ->setGold(0)
            ->setLevel(1)
            ->setUpgradePoint(0)
            ->setStats($service->generateStats());
        $hero = $hero->setPassword($encoder->encodePassword($hero, $password));
        $em->persist($service->generateQuests($hero));
        $em->flush();

        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }

    /**
     * @Route("/api/validateQuest", name="validate_quest", methods={"POST"})
     * @param Request $request
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @return Response
     * @throws \Exception
     */
    public function validateQuest(Request $request, HeroService $service, SerializerInterface $serializer)
    {
        $hero = $service->beginQuest($this->getUser(), json_decode($request->getContent(), true)['noQuest']);
        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }

    /**
     * @Route("/api/finishQuest", name="finish_quest", methods={"POST"})
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @return Response
     */
    public function finishQuest(HeroService $service, SerializerInterface $serializer)
    {
        $quest = $service->finishQuest($this->getUser());
        $hero = $serializer->serialize($quest[1], 'json', ['groups' => 'read']);
        return new JsonResponse(['fight' => $quest[0], 'hero' => json_decode($hero)]);
    }

    /**
     * @Route("/api/upStats", name="up_stats", methods={"POST"})
     * @param Request $request
     * @param HeroService $service
     * @return Response
     */
    public function upStats(Request $request, HeroService $service)
    {
        $elem = json_decode($request->getContent(), true)['elem'];
        $service->upgradeStats($this->getUser(), $elem);
        return new JsonResponse(true);
    }

    /**
     * @Route("/api/unequip/{stuff}", name="unequip", methods={"POST"})
     * @param $stuff
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @return Response
     */
    public function unequip(HeroService $service, SerializerInterface $serializer, $stuff)
    {
        $hero = $service->unequip($this->getUser(), $stuff);
        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }

    /**
     * @Route("/api/equip/{number}", name="equip", methods={"POST"})
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @param integer $number
     * @return Response
     */
    public function equip(HeroService $service, SerializerInterface $serializer, $number)
    {
        $hero = $service->equip($this->getUser(), $number);
        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }

    /**
     * @Route("/api/sell/{number}", name="sell", methods={"POST"})
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @param integer $number
     * @return Response
     */
    public function sell(HeroService $service, SerializerInterface $serializer, $number)
    {
        $hero = $service->sellStuff($this->getUser(), $number);
        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }

    /**
     * @Route("/api/ladder", name="ladder", methods={"POST"})
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @return Response
     */
    public function ladder(HeroService $service, SerializerInterface $serializer)
    {
        return new Response($serializer->serialize($service->getLadder(), 'json', ['groups' => 'ladder']));
    }

    /**
     * @Route("/api/buyChest/{nb}", name="buy_chest", methods={"POST"})
     * @param HeroService $service
     * @param SerializerInterface $serializer
     * @param int $nb
     * @return Response
     */
    public function buyChest(HeroService $service, SerializerInterface $serializer, int $nb)
    {
        $hero = $service->buyChest($this->getUser(), $nb);
        return new Response($serializer->serialize($hero, 'json', ['groups' => 'read']));
    }
}
