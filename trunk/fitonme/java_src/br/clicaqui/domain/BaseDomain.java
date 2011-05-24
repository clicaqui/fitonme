package br.clicaqui.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 * @author Maik Schumacher
 * 
 */

@MappedSuperclass
@NamedQueries( { @NamedQuery(name = "base.findAll", query = "from obj") })
public abstract class BaseDomain implements Serializable {

	private static final long serialVersionUID = 3094199864137022716L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Long id;

	@Basic
	@Column(name = "created", nullable = false, unique = false)
	private Timestamp created;

	@Basic
	@Column(name = "lastUpdated", unique = false)
	private Timestamp lastUpdated;

	/**
	 * Constructor
	 */
	public BaseDomain() {
		super();
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the created
	 */
	public Timestamp getCreated() {
		return created;
	}

	/**
	 * @param created
	 *            the created to set
	 */
	public void setCreated(Timestamp created) {
		this.created = created;
	}
	/**
	 * @return the lastUpdated
	 */
	public Timestamp getLastUpdated() {
		return lastUpdated;
	}

	/**
	 * @param lastUpdated
	 *            the lastUpdated to set
	 */
	public void setLastUpdated(Timestamp lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

}
