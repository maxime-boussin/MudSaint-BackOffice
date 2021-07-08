<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\StuffTemplateRepository")
 */
class StuffTemplate
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\StuffType")
     * @ORM\JoinColumn(nullable=false)
     * @Groups("read")
     */
    private $type;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\StuffSet")
     * @ORM\JoinColumn(nullable=true)
     * @Groups("read")
     */
    private $set;

    /**
     * @ORM\Column(type="integer")
     * @Groups("read")
     */
    private $rarity;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("read")
     */
    private $image;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups("read")
     */
    private $name;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?StuffType
    {
        return $this->type;
    }

    public function setType(?StuffType $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getRarity(): ?string
    {
        return $this->rarity;
    }

    public function setRarity(string $rarity): self
    {
        $this->rarity = $rarity;

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

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getSet(): ?StuffSet
    {
        return $this->set;
    }

    public function setSet(?StuffSet $set): self
    {
        $this->set = $set;
        return $this;
    }

}
