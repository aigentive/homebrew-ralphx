cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.1"
  sha256 arm:   "62b772e72fb9b96ff39f4924719043275ded29d22feb84f8e628093cba80ec62",
         intel: "1e26963782a596bfddde666869d5ab3170d6fb0d3f6ae6e79edc2a155130bee4"

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
