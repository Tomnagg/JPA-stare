package com.capgemini.wsb.mapper;

import com.capgemini.wsb.dto.VisitTO;
import com.capgemini.wsb.persistence.entity.VisitEntity;

public final class VisitMapper
{

    public static VisitTO mapToTO(final VisitEntity VisitEntity)
    {
        if (VisitEntity == null)
        {
            return null;
        }
        final VisitTO visitTO = new VisitTO();
        visitTO.setId(VisitEntity.getId());
        visitTO.setDescription(VisitEntity.getDescription());
        visitTO.setTime(VisitEntity.getTime());
        //visitTO.setMedicalTreatmentEntities(VisitEntity.getMedicalTreatmentEntities());
        visitTO.setPatient(VisitEntity.getPatient());
        return visitTO;
    }

    public static VisitEntity mapToEntity(final VisitTO visitTO)
    {
        if(visitTO == null)
        {
            return null;
        }
        VisitEntity visitEntity = new VisitEntity();
        visitEntity.setId(visitTO.getId());
        visitEntity.setDescription(visitTO.getDescription());
        visitEntity.setTime(visitTO.getTime());
        //visitEntity.setMedicalTreatmentEntities(visitTO.getMedicalTreatmentEntities());
        visitEntity.setPatient(visitTO.getPatient());
        return visitEntity;
    }
}
