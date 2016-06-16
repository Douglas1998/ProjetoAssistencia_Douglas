/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Douglas
 */
@Entity
@Table(name = "beneficio")
@NamedQueries({
    @NamedQuery(name = "Beneficio.findAll", query = "SELECT b FROM Beneficio b")})
public class Beneficio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_beneficio")
    private Long idBeneficio;
    @Basic(optional = false)
    @Column(name = "tipo_beneficio")
    private String tipoBeneficio;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "valor_beneficio")
    private BigDecimal valorBeneficio;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idBeneficio")
    private List<Contemplado> contempladoList;

    public Beneficio() {
    }

    public Beneficio(Long idBeneficio) {
        this.idBeneficio = idBeneficio;
    }

    public Beneficio(Long idBeneficio, String tipoBeneficio, BigDecimal valorBeneficio) {
        this.idBeneficio = idBeneficio;
        this.tipoBeneficio = tipoBeneficio;
        this.valorBeneficio = valorBeneficio;
    }

    public Long getIdBeneficio() {
        return idBeneficio;
    }

    public void setIdBeneficio(Long idBeneficio) {
        this.idBeneficio = idBeneficio;
    }

    public String getTipoBeneficio() {
        return tipoBeneficio;
    }

    public void setTipoBeneficio(String tipoBeneficio) {
        this.tipoBeneficio = tipoBeneficio;
    }

    public BigDecimal getValorBeneficio() {
        return valorBeneficio;
    }

    public void setValorBeneficio(BigDecimal valorBeneficio) {
        this.valorBeneficio = valorBeneficio;
    }

    public List<Contemplado> getContempladoList() {
        return contempladoList;
    }

    public void setContempladoList(List<Contemplado> contempladoList) {
        this.contempladoList = contempladoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idBeneficio != null ? idBeneficio.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Beneficio)) {
            return false;
        }
        Beneficio other = (Beneficio) object;
        if ((this.idBeneficio == null && other.idBeneficio != null) || (this.idBeneficio != null && !this.idBeneficio.equals(other.idBeneficio))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Beneficio[ idBeneficio=" + idBeneficio + " ]";
    }
    
}
