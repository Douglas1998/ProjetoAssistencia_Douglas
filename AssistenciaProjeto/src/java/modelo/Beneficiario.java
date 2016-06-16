/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Douglas
 */
@Entity
@Table(name = "beneficiario")
@NamedQueries({
    @NamedQuery(name = "Beneficiario.findAll", query = "SELECT b FROM Beneficiario b")})
public class Beneficiario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_beneficiario")
    private Long idBeneficiario;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "cpf")
    private String cpf;
    @Basic(optional = false)
    @Column(name = "semestre")
    private int semestre;
    @Basic(optional = false)
    @Column(name = "conta")
    private String conta;
    @Basic(optional = false)
    @Column(name = "data_ingresso")
    @Temporal(TemporalType.DATE)
    private Date dataIngresso;
    @Basic(optional = false)
    @Column(name = "vinculo_beneficiario")
    private String vinculoBeneficiario;
    @Basic(optional = false)
    @Column(name = "data_nascimento")
    @Temporal(TemporalType.DATE)
    private Date dataNascimento;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "renda_percapita")
    private BigDecimal rendaPercapita;
    @Basic(optional = false)
    @Column(name = "vinculo_mantenedorfamilia")
    private String vinculoMantenedorfamilia;
    @Basic(optional = false)
    @Column(name = "tipo_moradia")
    private String tipoMoradia;
    @Basic(optional = false)
    @Column(name = "curso")
    private String curso;
    @Basic(optional = false)
    @Column(name = "forma_ingresso")
    private String formaIngresso;
    @Basic(optional = false)
    @Column(name = "beneficio_social")
    private String beneficioSocial;
    @Basic(optional = false)
    @Column(name = "estado_civil")
    private String estadoCivil;
    @Basic(optional = false)
    @Column(name = "numero_dependencias")
    private int numeroDependencias;
    @Basic(optional = false)
    @Column(name = "responsavel_manterfamilia")
    private String responsavelManterfamilia;
    @Basic(optional = false)
    @Column(name = "banco")
    private String banco;
    @Basic(optional = false)
    @Column(name = "agencia")
    private int agencia;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idBeneficiario")
    private List<Frequencia> frequenciaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idBeneficiario")
    private List<Contemplado> contempladoList;

    public Beneficiario() {
    }

    public Beneficiario(Long idBeneficiario) {
        this.idBeneficiario = idBeneficiario;
    }

    public Beneficiario(Long idBeneficiario, String nome, String cpf, int semestre, String conta, Date dataIngresso, String vinculoBeneficiario, Date dataNascimento, BigDecimal rendaPercapita, String vinculoMantenedorfamilia, String tipoMoradia, String curso, String formaIngresso, String beneficioSocial, String estadoCivil, int numeroDependencias, String responsavelManterfamilia, String banco, int agencia) {
        this.idBeneficiario = idBeneficiario;
        this.nome = nome;
        this.cpf = cpf;
        this.semestre = semestre;
        this.conta = conta;
        this.dataIngresso = dataIngresso;
        this.vinculoBeneficiario = vinculoBeneficiario;
        this.dataNascimento = dataNascimento;
        this.rendaPercapita = rendaPercapita;
        this.vinculoMantenedorfamilia = vinculoMantenedorfamilia;
        this.tipoMoradia = tipoMoradia;
        this.curso = curso;
        this.formaIngresso = formaIngresso;
        this.beneficioSocial = beneficioSocial;
        this.estadoCivil = estadoCivil;
        this.numeroDependencias = numeroDependencias;
        this.responsavelManterfamilia = responsavelManterfamilia;
        this.banco = banco;
        this.agencia = agencia;
    }

    public Long getIdBeneficiario() {
        return idBeneficiario;
    }

    public void setIdBeneficiario(Long idBeneficiario) {
        this.idBeneficiario = idBeneficiario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public String getConta() {
        return conta;
    }

    public void setConta(String conta) {
        this.conta = conta;
    }

    public Date getDataIngresso() {
        return dataIngresso;
    }

    public void setDataIngresso(Date dataIngresso) {
        this.dataIngresso = dataIngresso;
    }

    public String getVinculoBeneficiario() {
        return vinculoBeneficiario;
    }

    public void setVinculoBeneficiario(String vinculoBeneficiario) {
        this.vinculoBeneficiario = vinculoBeneficiario;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public BigDecimal getRendaPercapita() {
        return rendaPercapita;
    }

    public void setRendaPercapita(BigDecimal rendaPercapita) {
        this.rendaPercapita = rendaPercapita;
    }

    public String getVinculoMantenedorfamilia() {
        return vinculoMantenedorfamilia;
    }

    public void setVinculoMantenedorfamilia(String vinculoMantenedorfamilia) {
        this.vinculoMantenedorfamilia = vinculoMantenedorfamilia;
    }

    public String getTipoMoradia() {
        return tipoMoradia;
    }

    public void setTipoMoradia(String tipoMoradia) {
        this.tipoMoradia = tipoMoradia;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getFormaIngresso() {
        return formaIngresso;
    }

    public void setFormaIngresso(String formaIngresso) {
        this.formaIngresso = formaIngresso;
    }

    public String getBeneficioSocial() {
        return beneficioSocial;
    }

    public void setBeneficioSocial(String beneficioSocial) {
        this.beneficioSocial = beneficioSocial;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public int getNumeroDependencias() {
        return numeroDependencias;
    }

    public void setNumeroDependencias(int numeroDependencias) {
        this.numeroDependencias = numeroDependencias;
    }

    public String getResponsavelManterfamilia() {
        return responsavelManterfamilia;
    }

    public void setResponsavelManterfamilia(String responsavelManterfamilia) {
        this.responsavelManterfamilia = responsavelManterfamilia;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public int getAgencia() {
        return agencia;
    }

    public void setAgencia(int agencia) {
        this.agencia = agencia;
    }

    public List<Frequencia> getFrequenciaList() {
        return frequenciaList;
    }

    public void setFrequenciaList(List<Frequencia> frequenciaList) {
        this.frequenciaList = frequenciaList;
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
        hash += (idBeneficiario != null ? idBeneficiario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Beneficiario)) {
            return false;
        }
        Beneficiario other = (Beneficiario) object;
        if ((this.idBeneficiario == null && other.idBeneficiario != null) || (this.idBeneficiario != null && !this.idBeneficiario.equals(other.idBeneficiario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Beneficiario[ idBeneficiario=" + idBeneficiario + " ]";
    }
    
}
