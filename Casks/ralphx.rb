cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "05652238cc0d3163e014c100b16a5f7d4f9c281805c6e6dd83d8457c37580bac",
         intel: "09a49f0a787337010400206f403cff26de9770cb9808a7a3e28c69101af07500"

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
