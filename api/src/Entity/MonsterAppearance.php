<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MonsterAppearanceRepository")
 */
class MonsterAppearance
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Groups("read")
     */
    private $race;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $body;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $ears;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $eyes;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $head;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $mouth;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getRace(): ?string
    {
        return $this->race;
    }

    public function setRace(string $race): self
    {
        $this->race = $race;

        return $this;
    }

    public function getBody(): ?int
    {
        return $this->body;
    }

    public function setBody(int $body): self
    {
        $this->body = $body;

        return $this;
    }

    public function getEars(): ?int
    {
        return $this->ears;
    }

    public function setEars(int $ears): self
    {
        $this->ears = $ears;

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

    public function getHead(): ?int
    {
        return $this->head;
    }

    public function setHead(int $head): self
    {
        $this->head = $head;

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
}
