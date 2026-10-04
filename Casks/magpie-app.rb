cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.820"
  sha256 arm:   "0920ab7b6654cae36a9a317e51da31a3284a2e2a4e60ae3773903093c7b7dc91",
         intel: "47f24c40f3a726dec28d9e43296b6b2a73e83d0484b36426bdb410a3389883a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
