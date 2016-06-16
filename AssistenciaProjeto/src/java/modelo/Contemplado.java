/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Douglas
 */
@Entity
@Table(name = "contemplado")
@NamedQueries({
    @NamedQuery(name = "Contemplado.findAll", query = "SELECT c FROM Contemplado c")})
public class Contemplado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_contemplado")
    private Long idContemplado;
    @Basic(optional = false)
    @Column(name = "data_inicial")
    @Temporal(TemporalType.DATE)
    private Date dataInicial;
    @Basic(optional = false)
    @Column(name = "data_final")
    @Temporal(TemporalType.DATE)
    private Date dataFinal;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "valor_contemplado")
    private BigDecimal valorContemplado;
    @JoinColumn(name = "id_beneficio", referencedColumnName = "id_beneficio")
    @ManyToOne(optional = false)
    private Beneficio idBeneficio;
    @JoinColumn(name = "id_beneficiario", referencedColumnName = "id_beneficiario")
    @ManyToOne(optional = false)
    private Beneficiario idBeneficiario;

    public Contemplado() {
    }

    public Contemplado(Long idContemplado) {
        this.idContemplado = idContemplado;
    }

    public Contemplado(Long idContemplado, Date dataInicial, Date dataFinal, BigDecimal valorContemplado) {
        this.idContemplado = idContemplado;
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
        this.valorContemplado = valorContemplado;
    }

    public Long getIdContemplado() {
        return idContemplado;
    }

    public void setIdContemplado(Long idContemplado) {
        this.idContemplado = idContemplado;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }

    public BigDecimal getValorContemplado() {
        return valorContemplado;
    }

    public void setValorContemplado(BigDecimal valorContemplado) {
        this.valorContemplado = valorContemplado;
    }

    public Beneficio getIdBeneficio() {
        return idBeneficio;
    }

    public void setIdBeneficio(Beneficio idBeneficio) {
        this.idBeneficio = idBeneficio;
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
        hash += (idContemplado != null ? idContemplado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contemplado)) {
            return false;
        }
        Contemplado other = (Contemplado) object;
        if ((this.idContemplado == null && other.idContemplado != null) || (this.idContemplado != null && !this.idContemplado.equals(other.idContemplado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Contemplado[ idContemplado=" + idContemplado + " ]";
    }
    
}
