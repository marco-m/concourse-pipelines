package hello_test

import (
	"testing"

	"github.com/marco-m/concourse-pipelines/build-golang/hello"
)

func TestAnswer(t *testing.T) {
	got := hello.Answer()
	if got != 42 {
		t.Errorf("Expected 42, got %v", got)
	}
}
