package com.movierate.parsing.factory;


import com.movierate.parsing.builder.AbstractCandyBuilder;
import com.movierate.parsing.builder.DOM_Builder;
import com.movierate.parsing.builder.SAX_Builder;
import com.movierate.parsing.builder.StAX_Builder;
import com.movierate.parsing.type.ParserType;

import static com.movierate.parsing.type.ParserType.DOM;
import static com.movierate.parsing.type.ParserType.SAX;
import static com.movierate.parsing.type.ParserType.STAX;

/**
 * Created by Yultos_ on 17.11.2016
 */
public class CandyBuilderFactory {

    public AbstractCandyBuilder createCandyBuilder(ParserType parserType) {
        switch (parserType) {
            case DOM:
                return new DOM_Builder();
            case STAX:
                return new StAX_Builder();
            case SAX:
                return new SAX_Builder();
            default:
                throw new EnumConstantNotPresentException (parserType.getDeclaringClass(), parserType.name());
        }
    }
}
