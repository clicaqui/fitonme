package br.clicaqui.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Index;

/**
 * @author Maik Schumacher
 * 
 */

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "usuarios")
@NamedQueries( {
		@NamedQuery(name = "usuarios.findAll", query = "from Usuario"),
		@NamedQuery(name = "usuarios.byLoginName", query = "select c from Usuario c where c.loginName = :loginName"),
		@NamedQuery(name = "usuarios.byId", query = "select c from Usuario c where c.id = :id") })
public class Usuario extends BaseDomain implements Serializable {

	private static final long serialVersionUID = 991990246441808211L;

	@Basic
	@Index(name = "loginName_idx_1")
	@Column(name = "loginName", nullable = true, unique = true)
	private String loginName;

	@Basic
	@Column(name = "firstName", nullable = true, unique = false)
	private String firstName;

	@Basic
	@Column(name = "lastName", nullable = true, unique = false)
	private String lastName;

	@Basic
	@Column(name = "type", nullable = true, unique = false)
	private int type;

	@Lob
	@Column(name = "imagem", nullable = true, unique = false, columnDefinition="BLOB")
	private byte[] imagem;

/*	@OneToMany()
	@JoinTable(name = "usuario_exame", 
			joinColumns = @JoinColumn(name = "usuarioId", referencedColumnName = "id"), 
			inverseJoinColumns = @JoinColumn(name = "exameId", referencedColumnName = "id"))
	private List<Exame> exames;

	@OneToMany()
	@JoinTable(name = "usuario_meta", 
			joinColumns = @JoinColumn(name = "usuarioId", referencedColumnName = "id"), 
			inverseJoinColumns = @JoinColumn(name = "metaId", referencedColumnName = "id"))
	private List<Meta> metas;

	@ManyToMany()
	@JoinTable(name = "usuarios_projeto" , joinColumns = @JoinColumn(name = "usuarioId", unique=true, nullable=false, referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "projetoId", referencedColumnName = "id"))
	private List<Projeto> projetos;*/
	
	
	public Usuario() {
		super();
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
/*
	public List<Meta> getMetas() {
		return metas;
	}

	public void setMetas(List<Meta> metas) {
		this.metas = metas;
	}


	public List<Exame> getExames() {
		return exames;
	}

	public void setExames(List<Exame> exames) {
		this.exames = exames;
	}

	public byte[] getImagem() {
		return imagem;
	}

	public void setImagem(byte[] imagem) {
		this.imagem = imagem;
	}

	public List<Projeto> getProjetos() {
		return projetos;
	}

	public void setProjetos(List<Projeto> projetos) {
		this.projetos = projetos;
	}*/

}
