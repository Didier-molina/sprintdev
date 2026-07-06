package edu.uptc.swi.sprintdev.domain;

public enum SprintStatus {
    CREATED,
    ACTIVE,
    CLOSED;

    public boolean allowsActivation() {
        return this == CREATED;
    }

    public boolean allowsClosing() {
        return this == ACTIVE;
    }

    public boolean allowsBacklogModification() {
        return this != CLOSED;
    }

    public boolean allowsTaskMovement() {
        return this == ACTIVE;
    }

}
