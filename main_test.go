package main

import "testing"

func TestWelcome(t *testing.T) {
	tcs := []struct {
		name string
		want string
	}{
		{
			name: "Alice",
			want: "Welcome Alice!",
		},
		{
			name: "Bob",
			want: "Welcome Bob!",
		},
	}

	for _, tc := range tcs {
		res := welcome(tc.name)
		if res != tc.want {
			t.Errorf("got %s, want %s", res, tc.want)
		}
	}
}
