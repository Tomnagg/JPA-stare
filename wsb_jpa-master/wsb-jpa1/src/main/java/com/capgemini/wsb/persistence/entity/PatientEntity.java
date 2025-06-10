package com.capgemini.wsb.persistence.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "PATIENT")
public class PatientEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String firstName;

	@Column(nullable = false)
	private String lastName;

	@Column(nullable = false)
	private String telephoneNumber;

	@Column(name = "email", nullable = true)
	private String email;

	@Column(nullable = false)
	private String patientNumber;

	@Column(nullable = false)
	private LocalDate dateOfBirth;

	@Column(nullable = true)
	private LocalDate dateOfJoiningTheClinic;

	/* Relacja dwukierunkowa jeden do jeden */
	@OneToOne(
			cascade = CascadeType.ALL,
			fetch = FetchType.LAZY,
			optional = false
	)
	private AddressEntity patientAddress;

	/* Realcja jeden do wielu jednokierunkowa od strony rodzica */
	/*@OneToMany(cascade = CascadeType.ALL,
			fetch = FetchType.LAZY
	)
	@JoinColumn(name = "PATIENT_ID")
	private List<VisitEntity> visitPatientEntities;*/
	@OneToMany(mappedBy = "patient", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<VisitEntity> visitPatientEntities;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTelephoneNumber() {
		return telephoneNumber;
	}

	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPatientNumber() {
		return patientNumber;
	}

	public void setPatientNumber(String patientNumber) {
		this.patientNumber = patientNumber;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public AddressEntity getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(AddressEntity patientAddress) {
		this.patientAddress = patientAddress;
	}

	public List<VisitEntity> getVisitPatientEntities() {
		return visitPatientEntities;
	}

	public void setVisitPatientEntities(List<VisitEntity> visitPatientEntities) {
		this.visitPatientEntities = visitPatientEntities;
	}

	public LocalDate getDateOfJoiningTheClinic() {
		return dateOfJoiningTheClinic;
	}

	public void setDateOfJoiningTheClinic(LocalDate dateOfJoiningTheClinic) {
		this.dateOfJoiningTheClinic = dateOfJoiningTheClinic;
	}
}
