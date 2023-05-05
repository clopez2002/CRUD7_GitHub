package pildoras.es.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pildoras.es.controlador.entity.Runner;

import java.util.List;

@Repository // Spring reconoce esto como un BEAMS
public class DAOClass implements DAO{

/*****************************************************************************/

    @Autowired      // para poder hacer la inyeccion de dependencias
    private SessionFactory sessionFactory;  // tal cual indica en el archivo de configuracion XML


/*****************************************************************************/

    @Override
    @Transactional  // con esto nos evitamos el begin, commit, rollback y demas
    public List<Runner> getRunnersList() {

        // obtner la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // crear la consulta

        Query myQuery = mySession.createQuery("from Runner", Runner.class);

        // ejecutar la query y devolver resultados

        List<Runner> runnerList = myQuery.getResultList();

        return runnerList;
    }

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/
}
