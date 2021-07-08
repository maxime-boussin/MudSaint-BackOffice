<?php

namespace App\Repository;

use App\Entity\HeroAppearance;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method HeroAppearance|null find($id, $lockMode = null, $lockVersion = null)
 * @method HeroAppearance|null findOneBy(array $criteria, array $orderBy = null)
 * @method HeroAppearance[]    findAll()
 * @method HeroAppearance[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HeroAppearanceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HeroAppearance::class);
    }

    // /**
    //  * @return HeroAppearance[] Returns an array of HeroAppearance objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('h')
            ->andWhere('h.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('h.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?HeroAppearance
    {
        return $this->createQueryBuilder('h')
            ->andWhere('h.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
