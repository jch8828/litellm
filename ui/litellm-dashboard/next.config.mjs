/** @type {import('next').NextConfig} */
const nextConfig = {
    output: 'export',
    basePath: `${process.env.PROXY_BASE_URL}/ui`,
};

nextConfig.experimental = {
    missingSuspenseWithCSRBailout: false
}

export default nextConfig;
