/** @type {import('next').NextConfig} */
const nextConfig = {
    output: 'export',
    basePath: process.env.LITELLM_UI_BASE_PATH,
};

nextConfig.experimental = {
    missingSuspenseWithCSRBailout: false
}

export default nextConfig;
