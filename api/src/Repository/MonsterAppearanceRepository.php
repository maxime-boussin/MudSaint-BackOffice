<?php

namespace App\Repository;

use App\Entity\MonsterAppearance;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method MonsterAppearance|null find($id, $lockMode = null, $lockVersion = null)
 * @method MonsterAppearance|null findOneBy(array $criteria, array $orderBy = null)
 * @method MonsterAppearance[]    findAll()
 * @method MonsterAppearance[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MonsterAppearanceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MonsterAppearance::class);
    }

    // /**
    //  * @return MonsterAppearance[] Returns an array of MonsterAppearance objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?MonsterAppearance
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
