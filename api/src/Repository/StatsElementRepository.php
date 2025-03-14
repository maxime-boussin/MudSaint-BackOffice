<?php

namespace App\Repository;

use App\Entity\StatsElement;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method StatsElement|null find($id, $lockMode = null, $lockVersion = null)
 * @method StatsElement|null findOneBy(array $criteria, array $orderBy = null)
 * @method StatsElement[]    findAll()
 * @method StatsElement[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StatsElementRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, StatsElement::class);
    }

    // /**
    //  * @return StatsElement[] Returns an array of StatsElement objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?StatsElement
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
