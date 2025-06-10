package com.capgemini.wsb.dto;

import com.capgemini.wsb.persistence.entity.MedicalTreatmentEntity;
import com.capgemini.wsb.persistence.entity.PatientEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

public class VisitTO implements Serializable
{
    private Long id;

    private String description;

    private LocalDateTime time;

    private List<MedicalTreatmentEntity> medicalTreatmentEntities;

    private PatientEntity patient;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime(LocalDateTime time) {
        this.time = time;
    }

    public List<MedicalTreatmentEntity> getMedicalTreatmentEntities() {
        return medicalTreatmentEntities;
    }

    public PatientEntity getPatient() {
        return patient;
    }

    public void setPatient(PatientEntity patient) {
        this.patient = patient;
    }

    public void setMedicalTreatmentEntities(List<MedicalTreatmentEntity> medicalTreatmentEntities) {
        this.medicalTreatmentEntities = medicalTreatmentEntities;
    }
}
