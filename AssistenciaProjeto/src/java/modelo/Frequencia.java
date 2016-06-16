/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Douglas
 */
@Entity
@Table(name = "frequencia")
@NamedQueries({
    @NamedQuery(name = "Frequencia.findAll", query = "SELECT f FROM Frequencia f")})
public class Frequencia implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_frequencia")
    private Long idFrequencia;
    @Basic(optional = false)
    @Column(name = "periodo")
    private String periodo;
    @Basic(optional = false)
    @Column(name = "numero_presencas")
    private int numeroPresencas;
    @Basic(optional = false)
    @Column(name = "numero_aulas")
    private int numeroAulas;
    @JoinColumn(name = "id_beneficiario", referencedColumnName = "id_beneficiario")
    @ManyToOne(optional = false)
    private Beneficiario idBeneficiario;

    public Frequencia() {
    }

    public Frequencia(Long idFrequencia) {
        this.idFrequencia = idFrequencia;
    }

    public Frequencia(Long idFrequencia, String periodo, int numeroPresencas, int numeroAulas) {
        this.idFrequencia = idFrequencia;
        this.periodo = periodo;
        this.numeroPresencas = numeroPresencas;
        this.numeroAulas = numeroAulas;
    }

    public Long getIdFrequencia() {
        return idFrequencia;
    }

    public void setIdFrequencia(Long idFrequencia) {
        this.idFrequencia = idFrequencia;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public int getNumeroPresencas() {
        return numeroPresencas;
    }

    public void setNumeroPresencas(int numeroPresencas) {
        this.numeroPresencas = numeroPresencas;
    }

    public int getNumeroAulas() {
        return numeroAulas;
    }

    public void setNumeroAulas(int numeroAulas) {
        this.numeroAulas = numeroAulas;
    }

    public Beneficiario getIdBeneficiario() {
        return idBeneficiario;
    }

    public void setIdBeneficiario(Beneficiario idBeneficiario) {
        this.idBeneficiario = idBeneficiario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idFrequencia != null ? idFrequencia.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Frequencia)) {
            return false;
        }
        Frequencia other = (Frequencia) object;
        if ((this.idFrequencia == null && other.idFrequencia != null) || (this.idFrequencia != null && !this.idFrequencia.equals(other.idFrequencia))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Frequencia[ idFrequencia=" + idFrequencia + " ]";
    }
    
}
