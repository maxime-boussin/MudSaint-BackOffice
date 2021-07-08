<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MonsterRepository")
 */
class Monster
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\MonsterAppearance", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     * @Groups("read")
     */
    private $appearance;

    /**
     * @ORM\Column(type="array")
     * @Groups("read")
     */
    private $stats = [];

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\Weapon", cascade={"persist", "remove"})
     * @Groups("read")
     */
    private $weapon;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAppearance(): ?MonsterAppearance
    {
        return $this->appearance;
    }

    public function setAppearance(MonsterAppearance $appearance): self
    {
        $this->appearance = $appearance;

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

    public function getWeapon(): ?Weapon
    {
        return $this->weapon;
    }

    public function setWeapon(?Weapon $weapon): self
    {
        $this->weapon = $weapon;

        return $this;
    }
}
