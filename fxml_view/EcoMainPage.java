package fxml_view;

import controller.EcoMainController;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.stage.Stage;
import view.rentBike.InputBikeCodePage;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class EcoMainPage implements Initializable {
    public static Stage rentBikeStage;
    public static Stage returnBikeStage;
    public static Integer userId = 1;
    private EcoMainController controller;
	private static Stage returnListDock;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }

    @FXML
    public void rentBikeClick() throws IOException {
        InputBikeCodePage inputBikeCodePage = controller.getInputBikeCodePage();
        rentBikeStage = inputBikeCodePage.getInputBikeCodeStage();
        Main.home.close();
        rentBikeStage.show();
    }

    @FXML
    public void returnBikeClick() throws IOException {
        EcoMainController ecoMainController = new EcoMainController();
        returnBikeStage = ecoMainController.getChooseBikeDockPage();
        Main.home.close();
        returnBikeStage.show();
    }
    @FXML
    public void Exit() throws IOException {
        Main.home.close();
    }
    @FXML
    public void viewDockClick() throws IOException {
    	 EcoMainController ecoMainController = new EcoMainController();
    	 returnListDock = ecoMainController.getListDockPage();
    	 Main.home.close();
    	 returnListDock.show();
    }
    public void setController(EcoMainController controller) {
        this.controller = controller;
    }
}


