package com.capgemini.wsb.persistance.services;

import com.capgemini.wsb.dto.PatientTO;
import com.capgemini.wsb.persistence.dao.PatientDao;
import com.capgemini.wsb.service.PatientService;
import com.capgemini.wsb.service.impl.PatientServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class PatientServiceTest {

    @Autowired
    private PatientDao patientDao;

    @Test
    public void testFindPatientById() {
        // given
        Long patientId = 1L;
        PatientService patientService = new PatientServiceImpl(patientDao);

        // when
        PatientTO patientTO = patientService.findById(patientId);

        // then
        assertThat(patientTO).isNotNull();
        assertThat(patientTO.getDateOfJoiningTheClinic().toString()).isEqualTo("2007-05-12");

    }

    @Test
    public void testDeletePatientCascade() {
        // given
        Long patientId = 1L;
        PatientService patientService = new PatientServiceImpl(patientDao);

        // when
        patientService.deletePatient(patientId);

        // then
        PatientTO patientTO = patientService.findById(patientId);
        assertThat(patientTO).isNull();
    }
}
