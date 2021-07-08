<?php

namespace App\Repository;

use App\Entity\StuffTemplate;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method StuffTemplate|null find($id, $lockMode = null, $lockVersion = null)
 * @method StuffTemplate|null findOneBy(array $criteria, array $orderBy = null)
 * @method StuffTemplate[]    findAll()
 * @method StuffTemplate[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StuffTemplateRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, StuffTemplate::class);
    }

    // /**
    //  * @return StuffTemplate[] Returns an array of StuffTemplate objects
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
    public function findOneBySomeField($value): ?StuffTemplate
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
