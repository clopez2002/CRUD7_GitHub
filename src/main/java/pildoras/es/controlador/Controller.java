package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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

        theModel.addAttribute("runnerAttribute", runnerList); // runnersAttributes es el atributo que usaremos siempre

        return "runners_list_file";
    }

/*****************************************************************************/

    @RequestMapping("/insertRunnerURL")
    public String showInsertRunnerForm (Model theModel){

        // bind de datos de clientes

        Runner theRunner = new Runner();

        theModel.addAttribute("runnerAttribute", theRunner);


        return "insert_runner_page";
    }

/*****************************************************************************/

    @PostMapping("/insertRunner")
    public String showInsertRunnerMethod (@ModelAttribute("runnerAttribute") Runner theRunner){

        daoClient.insertRunner (theRunner);

        return "redirect:/runnersPage/runnersListPage";
    }

/*****************************************************************************/

    @GetMapping("/updateRunnerURL")
    public String showUpdateRunnerMethod (@RequestParam("runnerId") int Id, Model theModel){

        // obtener el ruuner que le pasamos por parametro

        Runner theRunner = daoClient.getOneRunner (Id);

        // establecer el runner como atributo del modelo

        theModel.addAttribute("runnerAttribute", theRunner);


        // enviar al formuario


        return "update_runner_page";
    }


/*****************************************************************************/

    @GetMapping("/deleteRunnerURL")
    public String showDeleteMethod (@RequestParam("runnerId") int Id){

        daoClient.deleteOneRunner (Id);

        return "redirect:/runnersPage/runnersListPage";
    }



/*****************************************************************************/

/*****************************************************************************/




}
