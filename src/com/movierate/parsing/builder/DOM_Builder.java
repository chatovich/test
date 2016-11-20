package com.movierate.parsing.builder;


import com.movierate.parsing.entity.Candy;
import com.movierate.parsing.entity.Caramel;
import com.movierate.parsing.entity.Chocolate;
import com.movierate.parsing.entity.Ingridient;
import com.movierate.parsing.type.FillingType;
import com.movierate.parsing.type.FlavorType;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.Set;

/**
 * Created by Yultos_ on 16.11.2016
 */
public class DOM_Builder extends AbstractCandyBuilder {

    private DocumentBuilder docBuilder;
    public DOM_Builder() {
        super();
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        try {
            docBuilder = factory.newDocumentBuilder();
        } catch (ParserConfigurationException e) {
            System.err.println("Parser configuration error: " + e);
        }
    }

    @Override
    public void buildSetCandies(String fileName) {
        Document doc = null;
        try {
            doc = docBuilder.parse(fileName);
            Element root = doc.getDocumentElement();
            NodeList caramelsList = root.getElementsByTagName("caramel");
            for (int i = 0; i < caramelsList.getLength(); i++) {
                Element caramelElement = (Element) caramelsList.item(i);
                Caramel caramel = new Caramel();
                candyShop.addCandy(buildCandy(caramelElement, caramel));
            }
            NodeList chocolatesList = root.getElementsByTagName("chocolate");
            for (int i = 0; i < chocolatesList.getLength(); i++) {
                Element chocolateElement = (Element) chocolatesList.item(i);
                Chocolate chocolate = new Chocolate();
                candyShop.addCandy(buildCandy(chocolateElement, chocolate));
            }
        } catch (IOException e) {
            System.err.println("File error or I/O error: " + e);
        } catch (SAXException e) {
            System.err.println("Parsing failure: " + e);
        }
    }

    private Candy buildCandy(Element candyElement, Candy candy) {
        candy.setName(candyElement.getAttribute("name"));
        if (!candyElement.getAttribute("flavor").isEmpty()){
            candy.setFlavor(FlavorType.valueOf(candyElement.getAttribute("flavor").toUpperCase()));
        }
        candy.setCcal(Integer.parseInt(getElementTextContent(candyElement, "calories")));
        candy.setProduction(getElementTextContent(candyElement, "production"));

        if (!getElementTextContent(candyElement, "filling").isEmpty()){
            candy.setFilling(FillingType.valueOf(getElementTextContent(candyElement, "filling").toUpperCase()));
        }

        NodeList ingridientsList = candyElement.getElementsByTagName("ingridient");
        for (int i = 0; i < ingridientsList.getLength(); i++) {
            candy.addIngridient(buildIngridients((Element) ingridientsList.item(i)));
        }

        NodeList nutritionalList = candyElement.getElementsByTagName("value");
        for (int i = 0; i < nutritionalList.getLength(); i++) {
            candy.addNutritional(buildIngridients((Element) nutritionalList.item(i)));
        }

        return candy;
    }

    private static String getElementTextContent(Element element, String elementName) {
        NodeList nList = element.getElementsByTagName(elementName);
        Node node;
        if (nList.getLength()>0) {
            node = nList.item(0);
            return node.getTextContent();
        } else {
            return "";
        }

    }

    private Ingridient buildIngridients(Element element){
        Ingridient ingridient = new Ingridient();
        ingridient.setName(element.getAttribute("name"));
        if (!element.getAttribute("weight").isEmpty()){
            ingridient.setWeight(Integer.parseInt(element.getAttribute("weight").toUpperCase()));
        }
        return ingridient;
    }
}
