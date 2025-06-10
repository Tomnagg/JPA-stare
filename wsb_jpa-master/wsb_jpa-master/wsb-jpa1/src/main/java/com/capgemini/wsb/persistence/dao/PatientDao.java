package com.capgemini.wsb.persistence.dao;

import com.capgemini.wsb.persistence.entity.PatientEntity;

import java.time.LocalDate;
import java.util.List;

public interface PatientDao extends Dao<PatientEntity, Long>
{

    List<PatientEntity> findByLastName(String lastname);
    List<PatientEntity> findByMoreThanXVisits(Long x);

    List<PatientEntity> findByDateOfJoiningTheClinic(LocalDate date);
}
