package com.github.brucemig.customer;

public record CustomerRegistrationRequest(
        String firstName,
        String lastName,
        String email
) {
}
