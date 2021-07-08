<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\RaceRepository")
 */
class Race
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("read")
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("read")
     */
    private $bonusLabel;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("read")
     */
    private $image;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Element")
     * @Groups("read")
     */
    private $bonusElement;

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

    public function getBonusLabel(): ?string
    {
        return $this->bonusLabel;
    }

    public function setBonusLabel(string $bonusLabel): self
    {
        $this->bonusLabel = $bonusLabel;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getBonusElement(): ?Element
    {
        return $this->bonusElement;
    }

    public function setBonusElement(?Element $bonusElement): self
    {
        $this->bonusElement = $bonusElement;

        return $this;
    }
}
