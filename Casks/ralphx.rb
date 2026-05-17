cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.19.0"
  sha256 arm:   "b09ae0323f111f3c4f4e11292cb0ba48cbfad215fdd50133b5259beb728800bd",
         intel: "3d39886b51105c9d370e6254fd6446da4e1c95c8760638dd8e08d79246cfa3c7"

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
