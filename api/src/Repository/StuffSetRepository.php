<?php

namespace App\Repository;

use App\Entity\StuffSet;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method StuffSet|null find($id, $lockMode = null, $lockVersion = null)
 * @method StuffSet|null findOneBy(array $criteria, array $orderBy = null)
 * @method StuffSet[]    findAll()
 * @method StuffSet[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StuffSetRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, StuffSet::class);
    }

    // /**
    //  * @return Element[] Returns an array of Element objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('e.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Element
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
