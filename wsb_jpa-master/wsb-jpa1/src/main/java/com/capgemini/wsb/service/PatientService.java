package com.capgemini.wsb.service;

import com.capgemini.wsb.dto.PatientTO;

public interface PatientService {

    PatientTO findById(Long id);
    void deletePatient(Long id);
}