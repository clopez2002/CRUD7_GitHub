package pildoras.es.controlador;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping("/runnersPage")
public class Controller {

/*****************************************************************************/

    @RequestMapping("/runnersListPage")
    public String showRunnersListMethod (Model theModel){

        return "runners_list_file";
    }

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/




}
