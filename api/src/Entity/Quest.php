<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\QuestRepository")
 */
class Quest
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Monster", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     * @Groups("read")
     */
    private $monster;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $gold;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $experience;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $duration;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     * @Groups("read")
     */
    private $endDate;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Hero", inversedBy="quests")
     */
    private $hero;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMonster(): ?Monster
    {
        return $this->monster;
    }

    public function setMonster(Monster $monster): self
    {
        $this->monster = $monster;

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

    public function getExperience(): ?int
    {
        return $this->experience;
    }

    public function setExperience(int $experience): self
    {
        $this->experience = $experience;

        return $this;
    }

    public function getDuration(): ?int
    {
        return $this->duration;
    }

    public function setDuration(int $duration): self
    {
        $this->duration = $duration;

        return $this;
    }

    public function getEndDate(): ?\DateTimeInterface
    {
        return $this->endDate;
    }

    public function setEndDate(?\DateTimeInterface $endDate): self
    {
        $this->endDate = $endDate;

        return $this;
    }

    public function getHero(): ?Hero
    {
        return $this->hero;
    }

    public function setHero(?Hero $hero): self
    {
        $this->hero = $hero;

        return $this;
    }
}
