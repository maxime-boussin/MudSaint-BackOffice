<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\StuffRepository")
 */
class Stuff
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\StuffTemplate")
     * @ORM\JoinColumn(nullable=false)
     * @Groups("read")
     */
    private $template;

    /**
     * @ORM\Column(type="array")
     * @Groups("read")
     */
    private $stats = [];

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Hero", inversedBy="reserve")
     */
    private $hero;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Element")
     * @Groups("read")
     */
    private $element;

    /**
     * @ORM\Column(type="array", nullable=true)
     * @Groups("read")
     */
    private $damages = [];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTemplate(): ?StuffTemplate
    {
        return $this->template;
    }

    public function setTemplate(?StuffTemplate $template): self
    {
        $this->template = $template;

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

    public function getHero(): ?Hero
    {
        return $this->hero;
    }

    public function setHero(?Hero $hero): self
    {
        $this->hero = $hero;

        return $this;
    }

    public function getElement(): ?Element
    {
        return $this->element;
    }

    public function setElement(?Element $element): self
    {
        $this->element = $element;

        return $this;
    }

    public function getDamages(): ?array
    {
        return $this->damages;
    }

    public function setDamages(?array $damages): self
    {
        $this->damages = $damages;

        return $this;
    }
}
