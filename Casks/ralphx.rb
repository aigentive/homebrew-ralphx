cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.32.0"
  sha256 arm:   "1f07dbb533e80f18f9eeeb3dc92f9820f3c5ee0f42b0be32403dbf8ce04c8a07",
         intel: "42259b7267100962daf3f93cc440bf7067fdcc5e6ad59b5dfaaebd22f62b146e"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
