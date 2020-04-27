require "language/node"

class SpServerless < Formula
  desc "Deploy to StackPath's serverless scripting platform from your local machine"
  homepage "https://github.com/stackpath/serverless-scripting-cli"
  url "https://registry.npmjs.org/@stackpath/serverless-scripting-cli/-/serverless-scripting-cli-2.1.1.tgz"
  version "2.1.1"
  sha256 "a5aa4f4d1086b79e691579d637a5f82e77e1cd7cebd15bce52f102f524d30b10"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/sp-serverless", "-h"
  end
end
