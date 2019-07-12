require "language/node"

class SpServerless < Formula
  desc "Deploy to StackPath's serverless scripting platform from your local machine"
  homepage "https://github.com/stackpath/serverless-scripting-cli"
  url "https://registry.npmjs.org/@stackpath/serverless-scripting-cli/-/serverless-scripting-cli-2.0.1.tgz"
  version "2.0.1"
  sha256 "8a7cba88a3003b0d25d70b275ac3e55ec2c71d03bce6c735cdcba5507e96efbd"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/sp-serverless", "-h"
  end
end
