use owo_colors::OwoColorize;
use rust_in_docker_bug::add_one;

fn main() {
    println!("Number is {}", add_one(12344).cyan());
}
