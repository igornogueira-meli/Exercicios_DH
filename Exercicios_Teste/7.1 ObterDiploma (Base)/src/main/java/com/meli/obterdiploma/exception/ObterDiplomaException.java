package com.meli.obterdiploma.exception;

import com.meli.obterdiploma.model.ErrorDTO;
import lombok.Data;
import org.springframework.http.HttpStatus;


@Data
public class ObterDiplomaException extends RuntimeException{

    private final ErrorDTO error;
    private final HttpStatus status;

    public ObterDiplomaException(String message, HttpStatus status) {
        this.error = new ErrorDTO(this.getClass().getSimpleName(), message);
        this.status = status;
    }


}
