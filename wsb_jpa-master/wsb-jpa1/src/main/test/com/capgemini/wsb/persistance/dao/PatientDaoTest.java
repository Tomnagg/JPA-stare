package com.capgemini.wsb.persistance.dao;

import com.capgemini.wsb.persistence.dao.PatientDao;
import com.capgemini.wsb.persistence.entity.PatientEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PatientDaoTest
{
    @Autowired
    private PatientDao patientDao;

    @Transactional
    @Test
    public void findPatientByLastName() {
        // given
        final String lastName = "Groch";
        // when
        final List<PatientEntity> patientEntity = patientDao.findByLastName(lastName);
        // then
        assertThat(patientEntity).isNotNull();
    }
    @Transactional
    @Test
    public void findPatientByMoreThanXVisits()
    {
        // given
        final Long X = Long.valueOf(1);
        //when
        final List<PatientEntity> patientEntity = patientDao.findByMoreThanXVisits(X);
        //then
        assertThat(patientEntity).isNotNull();
        assertThat(patientEntity.size()).isEqualTo(2);
    }
    @Transactional
    @Test
    public void findPatientByDateOfJoiningTheClinic()
    {
        //given
        final LocalDate date = LocalDate.of(2012, 02, 24);
        //when
        final List<PatientEntity> patientEntity = patientDao.findByDateOfJoiningTheClinic(date);
        //then
        assertThat(patientEntity).isNotNull();
        assertThat(patientEntity.size()).isEqualTo(3);
    }
    @Transactional
    @Test
    public void findPatientByTelephoneNumber() {
        // given
        final String telephonenumber = "501008008";

        // when
        final List<PatientEntity> patients = patientDao.findPatientByTelephoneNumber(telephonenumber);

        // then
        assertThat(patients).isNotNull();
        assertThat(patients).isNotEmpty();
        assertThat(patients.size()).isEqualTo(1);
    }
}