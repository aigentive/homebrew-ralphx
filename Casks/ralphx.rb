cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.44.0"
  sha256 arm:   "b6fa3d9ed53d6d964341508b5f9bc0c1714787e6a84031627459bfd107ab4710",
         intel: "afdad493c1dd2c9d1bdd0cad61c6ce64352d2779e9877040bd3b41c7eb8fba6a"

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
