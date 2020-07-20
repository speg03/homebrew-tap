class Jiren < Formula
  include Language::Python::Virtualenv

  desc "Jinja2 template renderer"
  homepage "https://github.com/speg03/jiren"
  url "https://files.pythonhosted.org/packages/bc/dd/52a504de238a2fddd52dffb0cd543dd3abf6d006eb36c1bc26d2bdf15b7e/jiren-0.3.0.tar.gz"
  sha256 "ca6a9aab8589b4f4c19ad8a8db936646760d59fe740901d3c8d24db590b66af7"
  license "MIT"

  depends_on "python@3.8"

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/64/a7/45e11eebf2f15bf987c3bc11d37dcc838d9dc81250e67e4c5968f6008b6c/Jinja2-2.11.2.tar.gz"
    sha256 "89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
    sha256 "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b"
  end

  def install
    rm_f "pyproject.toml"
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test jiren`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
