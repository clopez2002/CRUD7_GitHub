package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pildoras.es.controlador.entity.Runner;
import pildoras.es.dao.DAO;

import java.util.List;

@org.springframework.stereotype.Controller
@RequestMapping("/runnersPage")
public class Controller {

/*****************************************************************************/

    @Autowired
    private DAO daoClient;

/*****************************************************************************/

    @RequestMapping("/runnersListPage")
    public String showRunnersListMethod (Model theModel){

        // obtener los clientes desdel el dao

        List<Runner> runnerList = daoClient.getRunnersList();

        // agregar los clientes al modelo

        theModel.addAttribute("runnersAttributes", runnerList); // runnersAttributes es el atributo que usaremos siempre

        return "runners_list_file";
    }

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/




}
