package com.capgemini.wsb.persistence.dao.impl;

import com.capgemini.wsb.persistence.dao.PatientDao;
import com.capgemini.wsb.persistence.entity.PatientEntity;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public class PatientDaoImpl extends AbstractDao<PatientEntity, Long> implements PatientDao
{

    @Override
    public List<PatientEntity> findByLastName(String lastname) {
        return entityManager.createQuery("select pat from PatientEntity pat " +
                "where pat.lastName like :param1 ", PatientEntity.class)
                .setParameter("param1", lastname)
                .getResultList();
    }

    @Override
    public List<PatientEntity> findByMoreThanXVisits(Long X) {
        return entityManager.createQuery("select pat from PatientEntity pat " +
                "where(select count(vis) from VisitEntity vis " +
                "where vis.patient = pat) > :x", PatientEntity.class)
                .setParameter("x", X)
                .getResultList();
    }

    @Override
    public List<PatientEntity> findByDateOfJoiningTheClinic(LocalDate date) {
        return entityManager.createQuery("select pat from PatientEntity pat " +
                "where pat.dateOfJoiningTheClinic > :date", PatientEntity.class)
                .setParameter("date", date)
                .getResultList();
    }
}
