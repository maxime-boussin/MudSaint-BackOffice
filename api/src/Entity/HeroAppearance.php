<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\HeroAppearanceRepository")
 */
class HeroAppearance
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $hair;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $hairColor;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $beard;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $eyebrows;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $mouth;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $eyes;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $eyesColor;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Race")
     * @Groups("read")
     * @ORM\JoinColumn(nullable=false)
     */
    private $race;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getHair(): ?int
    {
        return $this->hair;
    }

    public function setHair(int $hair): self
    {
        $this->hair = $hair;

        return $this;
    }

    public function getHairColor(): ?int
    {
        return $this->hairColor;
    }

    public function setHairColor(int $hairColor): self
    {
        $this->hairColor = $hairColor;

        return $this;
    }

    public function getBeard(): ?int
    {
        return $this->beard;
    }

    public function setBeard(int $beard): self
    {
        $this->beard = $beard;

        return $this;
    }

    public function getEyebrows(): ?int
    {
        return $this->eyebrows;
    }

    public function setEyebrows(int $eyebrows): self
    {
        $this->eyebrows = $eyebrows;

        return $this;
    }

    public function getMouth(): ?int
    {
        return $this->mouth;
    }

    public function setMouth(int $mouth): self
    {
        $this->mouth = $mouth;

        return $this;
    }

    public function getEyes(): ?int
    {
        return $this->eyes;
    }

    public function setEyes(int $eyes): self
    {
        $this->eyes = $eyes;

        return $this;
    }

    public function getEyesColor(): ?int
    {
        return $this->eyesColor;
    }

    public function setEyesColor(int $eyesColor): self
    {
        $this->eyesColor = $eyesColor;

        return $this;
    }

    public function getRace(): ?Race
    {
        return $this->race;
    }

    public function setRace(?Race $race): self
    {
        $this->race = $race;

        return $this;
    }
}
