require "language/node"

class SpServerless < Formula
  desc "Deploy to StackPath's serverless scripting platform from your local machine"
  homepage "https://github.com/stackpath/serverless-scripting-cli"
  url "https://registry.npmjs.org/@stackpath/serverless-scripting-cli/-/serverless-scripting-cli-2.1.0.tgz"
  version "2.1.0"
  sha256 "dc1cc24a273485b0de04c892bad376bb47021d71dbebc64190a32e4cf6c5109a"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/sp-serverless", "-h"
  end
end
