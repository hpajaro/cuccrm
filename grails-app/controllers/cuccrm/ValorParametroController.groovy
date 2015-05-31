package cuccrm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValorParametroController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def lista=ValorParametro.findAll("from ValorParametro as v where v.parametro.id=${params.id}")
        respond lista, model:[valorParametroInstanceCount: ValorParametro.count()]
    }

    def show(ValorParametro valorParametroInstance) {
        respond valorParametroInstance
    }

    def create() {
        respond new ValorParametro(params)
    }

    @Transactional
    def save(ValorParametro valorParametroInstance) {
        if (valorParametroInstance == null) {
            notFound()
            return
        }
        println "xid="+params.xid
        if (params.xid){                    
            valorParametroInstance.parametro=Parametro.get(params.xid)
       }
        
        valorParametroInstance.validate()
        
        if (valorParametroInstance.hasErrors()) {
            respond valorParametroInstance.errors, view:'create'
            return
        }

        valorParametroInstance.save flush:true,failOnError:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valorParametroInstance.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect valorParametroInstance
            }
            '*' { respond valorParametroInstance, [status: CREATED] }
        }
    }

    def edit(ValorParametro valorParametroInstance) {
        respond valorParametroInstance
    }

    @Transactional
    def update(ValorParametro valorParametroInstance) {
        if (valorParametroInstance == null) {
            notFound()
            return
        }

        if (valorParametroInstance.hasErrors()) {
            respond valorParametroInstance.errors, view:'edit'
            return
        }

        valorParametroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValorParametro.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect valorParametroInstance
            }
            '*'{ respond valorParametroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValorParametro valorParametroInstance) {
        println "id="+params.id
        valorParametroInstance=ValorParametro.get(params.id)
        def idPadre= valorParametroInstance.parametro.id
        valorParametroInstance.delete flush:true
        
        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValorParametro.label', default: 'ValorParametro'), valorParametroInstance.id])
                redirect url:"/ValorParametro/index/"+idPadre
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valorParametroInstance.label', default: 'ValorParametro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
