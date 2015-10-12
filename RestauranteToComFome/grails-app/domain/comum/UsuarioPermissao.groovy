package comum

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuarioPermissao implements Serializable {

	private static final long serialVersionUID = 1

	Usuario usuario
	Permissao permissao

	boolean equals(other) {
		if (!(other instanceof UsuarioPermissao)) {
			return false
		}

		other.usuario?.id == usuario?.id &&
		other.permissao?.id == permissao?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuario) builder.append(usuario.id)
		if (permissao) builder.append(permissao.id)
		builder.toHashCode()
	}

	static UsuarioPermissao get(long usuarioId, long permissaoId) {
		UsuarioPermissao.where {
			usuario == Usuario.load(usuarioId) &&
			permissao == Permissao.load(permissaoId)
		}.get()
	}

	static boolean exists(long usuarioId, long permissaoId) {
		UsuarioPermissao.where {
			usuario == Usuario.load(usuarioId) &&
			permissao == Permissao.load(permissaoId)
		}.count() > 0
	}

	static UsuarioPermissao create(Usuario usuario, Permissao permissao, boolean flush = false) {
		def instance = new UsuarioPermissao(usuario: usuario, permissao: permissao)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Usuario u, Permissao r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = UsuarioPermissao.where {
			usuario == Usuario.load(u.id) &&
			permissao == Permissao.load(r.id)
		}.deleteAll()

		if (flush) { UsuarioPermissao.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(Usuario u, boolean flush = false) {
		if (u == null) return

		UsuarioPermissao.where {
			usuario == Usuario.load(u.id)
		}.deleteAll()

		if (flush) { UsuarioPermissao.withSession { it.flush() } }
	}

	static void removeAll(Permissao r, boolean flush = false) {
		if (r == null) return

		UsuarioPermissao.where {
			permissao == Permissao.load(r.id)
		}.deleteAll()

		if (flush) { UsuarioPermissao.withSession { it.flush() } }
	}

	static constraints = {
		permissao validator: { Permissao r, UsuarioPermissao ur ->
			if (ur.usuario == null) return
			boolean existing = false
			UsuarioPermissao.withNewSession {
				existing = UsuarioPermissao.exists(ur.usuario.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['permissao', 'usuario']
		version false
		permissao lazy:false
	}
}
