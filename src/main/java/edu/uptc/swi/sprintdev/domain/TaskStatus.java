package edu.uptc.swi.sprintdev.domain;

    public enum TaskStatus {

        PENDING,
        IN_PROGRESS,
        COMPLETED;

        public boolean isCompleted() {
            return this == COMPLETED;
        }
    }
