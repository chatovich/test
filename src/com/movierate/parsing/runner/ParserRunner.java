package com.movierate.parsing.runner;

import com.movierate.parsing.builder.AbstractCandyBuilder;
import com.movierate.parsing.entity.Candy;
import com.movierate.parsing.factory.CandyBuilderFactory;
import com.movierate.parsing.type.ParserType;

import java.util.Set;

/**
 * Created by Yultos_ on 16.11.2016
 */
public class ParserRunner {

    public static Set<Candy> createList(String filename, String parser){

        ParserType parserType = ParserType.valueOf(parser.toUpperCase());
        CandyBuilderFactory sFactory = new CandyBuilderFactory();
        AbstractCandyBuilder candyBuilder = sFactory.createCandyBuilder(parserType);
        candyBuilder.buildSetCandies(filename);
         return candyBuilder.getCandies();
    }


}
