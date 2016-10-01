# Homebrew Formula for diamond-patterns
# diamond-patterns (c) Ian Dennis Miller
# based on https://github.com/Homebrew/brew/blob/master/docs/Python-for-Formula-Authors.md

class DiamondPatterns < Formula
  desc "Diamond Patterns for creating projects"
  homepage "https://github.com/iandennismiller/diamond-patterns"
  url "https://pypi.python.org/packages/4c/e5/0d6a9c7a2dee8dac367afa5f7e0b55d5a8307e13c7137b56f3c787b85b2c/diamond-patterns-0.2.7.tar.gz"
  sha256 "b365189a4e5855b31391093ae01dd5464aea2a13c39f84bcbacb8302e943f88c"

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/f2/2f/0b98b06a345a761bec91a079ccae392d282690c2d8272e708f4d10829e22/Jinja2-2.8.tar.gz"
    sha256 "bc1ff2ff88dbfacefde4ddde471d1417d3b304e8df103a7a9437d47269201bf4"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/7a/00/c14926d8232b36b08218067bcd5853caefb4737cda3f0a47437151344792/click-6.6.tar.gz"
    sha256 "cc6a19da8ebff6e7074f731447ef7e112bd23adf3de5c597cf9989f2fd8defe9"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/c0/41/bae1254e0396c0cc8cf1751cb7d9afc90a602353695af5952530482c963f/MarkupSafe-0.23.tar.gz"
    sha256 "a4ec1aff59b95a14b45eb2e23761a0179e98319da5a7eb76b56ea8cdc7b871c3"
  end

  resource "mr.bob" do
    url "https://files.pythonhosted.org/packages/05/43/7910606984c7a0259b383ec770da801de74da1f71612558b0aca2a311d02/mr.bob-0.1a9.zip"
    sha256 "fb88788ae77ced4025b2e737e227e63fec625a36b6265f37516efe904630fcb6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  include Language::Python::Virtualenv

  def install
    virtualenv_install_with_resources
  end
end
