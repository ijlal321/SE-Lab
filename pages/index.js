import Head from 'next/head';
export default function Home() {
 return (
    <>
        <Head>
            <title>My Static Site</title>
            <meta name="description" content="This is a sample static site." />
            <meta property="og:title" content="My Static Site" />
            <meta property="og:description" content="This is a sample static site using Next.js." />
        </Head>
        <h1>A Sample My Static Site</h1>
        <img src="https://i.pinimg.com/236x/73/8b/59/738b59f109c56190cbe22d4c148a06f2.jpg" alt="Example Image" loading="lazy" />
    </>
 );
}