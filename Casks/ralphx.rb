cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.59.0"
  sha256 arm:   "cf3b79e67fa4007070382ea8dfdeff60dd7b6cc1548340531541d07a1985cd24",
         intel: "af5b7c4bbf30478d4d215cdb412cfb219753ca3d6cfc4496544c6508f46f1caa"

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
