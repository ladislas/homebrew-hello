class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/9.0.0.tar.gz"
  sha256 "5b4bb2c4d96e2d9adb38b4f92ab20a1806a6411f902c712ea9cf5c1a5a7ab65b"

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, world!\nVersion #{version}\n"
  end
end
